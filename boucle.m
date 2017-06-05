data = rand(20,4);

moy = mean (data);

for n = 1:size(data,2)
    result(:,n) = data(:,n) - moy(n);
end

figure;
plot(data(:,1));
hold on
plot(data(:,2),'g');