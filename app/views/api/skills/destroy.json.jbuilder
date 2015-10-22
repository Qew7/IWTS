if @skill.errors.empty?
json.msg 'Запись удалена'
json.errors []
else
json.msg 'Произошла ошибка'
json.errors @skill.errors
end
