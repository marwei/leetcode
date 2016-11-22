# @param {String} path
# @return {String}
def simplify_path(path)
    paths = path.split('/')
    stack = []
    paths.each do |p|
        next if p == ''
        if p == '..'
            stack.pop
        elsif p == '.'
            next
        else
            stack.push p
        end
    end
    result = '/' + stack.join('/')
end

p simplify_path('/...')