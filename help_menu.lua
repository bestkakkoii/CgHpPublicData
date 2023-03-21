--[[
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local t <const> = {
    {
        1, "$4請選擇快捷功能:",
        "$0自動戰鬥",
        "自動組隊",
        "自動登入",
        "戰鬥加速",
        "平時加速",
        "自動走路",
        "獵殺任務",
        "解散隊伍"
    },
};
local option_control <const> = %1;
local result <const> = sys.createdialog(t, BUTTON.CANCEL);

local mission_index = -1;
if (type(result) == "table") then
    mission_index = result.row
else
    return;
end

local function set(str, element, option)
    local sztype = type(option);
    local b = false;
    if ((sztype == "string") or (sztype == "number") or (sztype == "integer")) then
        b = sys.get(element, option);
        sys.set(element, not b, option);
    elseif (sztype == "table") then
        local once = false;
        for _ , v in pairs(option) do
            if (not once) then
                once = true;
                b = sys.get(element, v);
            end
            sys.set(element, not b, v);
        end
    end
    print("<系統>" .. str .. ":" .. tn(not b, "開啟", "關閉"), 4);
end


local function hunt_menu(option)
    local hunttable <const> = {
        {
            "編號1$4靈堂的小魔物$0Lv1   $0編號24$4雪地中的聖域$0Lv55",
            "$0編號2$4緝捕盜賊團夥$0Lv1   $0編號25$4阿卡斯之火焰$0Lv55",
            "$0編號3$4幽靈的惡作劇$0Lv5   $0編號26$4雙王無解封印$0Lv50",
            "$0編號4$4法蘭恐怖事件$0Lv15  $0編號27$4商隊突襲任務$0Lv50",
            "$0編號5$4消滅攔路一夥$0Lv20  $0編號28$4百鬼夜行物語$0Lv50",
            "$0編號6$4消滅數精長老$0Lv20  $0編號29$4大公雞的逆襲$0Lv60",
            "$0編號7$4格鬥家的試煉$0Lv20  $0編號30$4飛不起來的夢$0Lv60",
            "$0編號8$4法爾肯的報復$0Lv20  $0編號31$4暗殺犯的追跡$0Lv65",
            "$0編號9$4巫師襲擊事件$0Lv20  $0編號32$4伊姆爾的亡靈$0Lv65",
            "$0編號10$4忍者暗殺集團$0Lv20 $0編號33$4商城長老密談$0Lv65",
            "$0編號11$4蟲洞的逆十字$0Lv20 $0編號34$4砂之塔的記憶$0Lv70",
            "$0編號12$4雞與蛋的迷思$0Lv20 $0編號35$4高塔生存法則$0Lv70",
            "$0編號13$4洞窟內的聲音$0Lv25 $0編號36$4異國妖精傳說$0Lv85",
            "$0編號14$4阿巴尼斯危機$0Lv30 $0編號37$4軍神李貝留斯$0Lv85",
            "$0編號15$4超合金協奏曲$0Lv30 $0編號38$4祕寶天帝之證$0Lv85",
            "$0編號16$4虛幻浮生若夢$0Lv35 $0編號39$4皇族始祖之墓$0Lv85",
            "$0編號17$4神獸甦醒之歌$0Lv35 $0編號40$4天之谷祈願所$0Lv80",
            "$0編號18$4海賊指揮中心$0Lv35 $0編號41$4冥府倒無名者$0Lv85",
            "$0編號19$4開啟者的試煉$0Lv35 $0編號42$4暴風雨的小島$0Lv20",
            "$0編號20$4南國森林公園$0Lv40 $0編號43$4冰宮殿的回憶$0Lv70",
            "$0編號21$4捕捉迷你犬妖$0Lv40 $0編號44$4火炎谷的追憶$0Lv70",
            "$0編號22$4辛梅爾編年史$0Lv45 $0編號45$4保險箱的鑰匙$0Lv75",
            "$0編號23$4拯救消失王子$0Lv55 $0編號46$4與公主的誓言$0Lv75"

        },
    };

    local function isNumber(words)
        if string.len(words) < 1 then
            return false
        end

        for i = 1, string.len(words) do
            if string.byte(string.sub(words,i,i)) < 48 or string.byte(string.sub(words,i,i)) > 57 then
                return false
            end
        end
        return true
    end

    repeat
        local hunt_result <const> = sys.createdialog(hunttable, BUTTON.OK | BUTTON.YES | BUTTON.NO | BUTTON.CANCEL, DLG.EXTEND);
        if (type(hunt_result) ~= "table") then
            return;
        end

        if (hunt_result.button == BUTTON.OK) then
            local ret = sys.waitforcmd("<系統>請輸入(1~46)獵殺任務編號:");
            ret = trim(ret);
            if (#ret > 0 and isNumber(ret)) then
                local nret = tonumber(ret);
                if (nret >= 1 and nret <= 46) then
                    print("<系統>你接取了獵殺任務:" .. tostring(nret), 4);
                    sys.mission(HUNT.ACCEPT, nret, option);
                    return;
                else
                    print("<系統>所選擇的編號超出範圍", 4);
                    goto continue;
                end
            end
            print("<系統>錯誤的獵殺參數", 4);
        elseif (hunt_result.button == BUTTON.YES) then
            sys.mission(HUNT.HACKSUBMIT, HACKERDUMP);
            return;
        elseif (hunt_result.button == BUTTON.NO) then
            sys.mission(HUNT.REJECT, HACKERDUMP);
            return;
        else
            break;
        end
        ::continue::
    until false
end

if (result.button == BUTTON.NONE) then
    if (mission_index == 0) then
        set("自動戰鬥", GEN.BATTLE_AI_ENABLE, option_control);
    elseif (mission_index == 1) then
        set("自動組隊", GEN.AUTO_JOIN_ENABLE, option_control);
    elseif (mission_index == 2) then
        set("自動登入", GEN.AUTO_LOGIN_ENABLE, option_control);
    elseif (mission_index == 3) then
        set("戰鬥加速", GEN.BATTLE_SPEED_BOOST_ENABLE, option_control);
    elseif (mission_index == 4) then
        set("平時加速", GEN.NORMAL_SPEED_BOOST_ENABLE, option_control);
    elseif (mission_index == 5) then
        set("自動走路", GEN.AUTOWALK_ENABLE, option_control);
    elseif (mission_index == 6) then -- "獵殺任務"
        hunt_menu(option_control);
    elseif (mission_index == 7) then -- "解散隊伍"
        char.leave(option_control);
    end
end
