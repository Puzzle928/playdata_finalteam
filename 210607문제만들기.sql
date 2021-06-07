agents table에서 agent_code 입력하면 working_area가
입력되는 함수를 만들어라

create or replace function lee(v_code agents.agent_code%type)
return varchar2
is
    v_area agents.working_area%type;
begin
    select working_area
        into v_area
    from agents
    where agent_code = v_code;

    return v_area;
end;
/

select lee('A011') from dual


LEE('A011')
------------
Bangalore