a1 = 1.3789;
a2 = -0.9506;
numerator = 1;
denominator = [1, -a1, -a2];

% transform function
Ts = 1; % samlple interval = 1
tf(numerator, denominator, Ts)

% zero-pole distribution
figure(1);
zplane(numerator, denominator);

% frequency response
figure(2);
freqz(numerator, denominator, 200)

% impulse response by impz function
figure(3);
n = 0: 50;
impz(numerator, denominator, n);

% impulse response by filter
figure(4);
x = ( n == 0);
h = filter(numerator, denominator, x);
stem(n, h, 'k-');
set(gca,'YScale','linear');
xlabel('n');
ylabel('h');



































% delta