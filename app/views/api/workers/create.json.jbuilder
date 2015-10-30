if @worker.errors.empty?
json.msg 'Запись добавлена'
json.errors []
else
json.msg 'Произошла ошибка'
json.errors @worker.errors
end
