%ѡ������
function resdata = FIR_filter(wp,ws,rp,rs,data,Fs)
% wp=500*2/5000;% Ƶ�ʹ�һ��
% ws=800*2/5000;
% wdel=ws-wp;% ���ɴ���
% wn=0.5*(wp+ws);% ���Ƽ����ֹƵ��
% N=ceil(6.6*pi/wdel);% ���ݹ��ɴ�������˲�������
% window=hamming(N+1);% ������
% b=fir1(N,wn,window);% FIR�˲������
% figure('NumberTitle', 'off', 'Name', 'FIR�����˲�����ƽ��','menubar','none');
% freqz(b,1,Fs);% �鿴�˲�����Ƶ����Ƶ����
% resdata = filter(b,1,data);%���ź�data�����˲�
%%
Wp=wp*1000*2/Fs;% Ƶ�ʹ�һ��
Ws=ws*1000*2/Fs;
wdel=Ws-Wp;% ���ɴ���
wn=0.5*(wp+ws);% ���Ƽ����ֹƵ��
N=ceil(6.6*pi/wdel);% ���ݹ��ɴ�������˲�������
window=hamming(N+1);% ������
b=fir1(N,wn,window);% FIR�˲������
figure('NumberTitle', 'off', 'Name', 'FIR�����˲�����ƽ��','menubar','none');
freqz(b,1,512);% �鿴�˲�����Ƶ����Ƶ����
resdata = filter(b,1,data);%���ź�data�����˲�