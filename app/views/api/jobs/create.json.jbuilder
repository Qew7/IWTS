if @job.errors.empty?
json.msg 'Запись добавлена'
json.errors []
else
json.msg 'Произошла ошибка'
json.errors @job.errors
end
