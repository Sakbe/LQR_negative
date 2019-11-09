clear all
% pkg load optim
shotnr1=47860;
client = StartSdas()

mirnv1='MARTE_NODE_IVO3.DataCollection.Channel_129'; 
mirnv2='MARTE_NODE_IVO3.DataCollection.Channel_130';
mirnv3='MARTE_NODE_IVO3.DataCollection.Channel_131';
mirnv4='MARTE_NODE_IVO3.DataCollection.Channel_132';
mirnv5='MARTE_NODE_IVO3.DataCollection.Channel_133'; 
mirnv6='MARTE_NODE_IVO3.DataCollection.Channel_134';
mirnv7='MARTE_NODE_IVO3.DataCollection.Channel_135';
mirnv8='MARTE_NODE_IVO3.DataCollection.Channel_136'; 
mirnv9='MARTE_NODE_IVO3.DataCollection.Channel_137';
mirnv10='MARTE_NODE_IVO3.DataCollection.Channel_138';
mirnv11='MARTE_NODE_IVO3.DataCollection.Channel_139';
mirnv12='MARTE_NODE_IVO3.DataCollection.Channel_140';

mirnv1_raw='MARTE_NODE_IVO3.DataCollection.Channel_145'; 
mirnv2_raw='MARTE_NODE_IVO3.DataCollection.Channel_146';
mirnv3_raw='MARTE_NODE_IVO3.DataCollection.Channel_147';
mirnv4_raw='MARTE_NODE_IVO3.DataCollection.Channel_148';
mirnv5_raw='MARTE_NODE_IVO3.DataCollection.Channel_149'; 
mirnv6_raw='MARTE_NODE_IVO3.DataCollection.Channel_150';
mirnv7_raw='MARTE_NODE_IVO3.DataCollection.Channel_151';
mirnv8_raw='MARTE_NODE_IVO3.DataCollection.Channel_152'; 
mirnv9_raw='MARTE_NODE_IVO3.DataCollection.Channel_153';
mirnv10_raw='MARTE_NODE_IVO3.DataCollection.Channel_154';
mirnv11_raw='MARTE_NODE_IVO3.DataCollection.Channel_155';
mirnv12_raw='MARTE_NODE_IVO3.DataCollection.Channel_156';

mirnv1_corr='MARTE_NODE_IVO3.DataCollection.Channel_166'; 
mirnv2_corr='MARTE_NODE_IVO3.DataCollection.Channel_167';
mirnv3_corr='MARTE_NODE_IVO3.DataCollection.Channel_168';
mirnv4_corr='MARTE_NODE_IVO3.DataCollection.Channel_169';
mirnv5_corr='MARTE_NODE_IVO3.DataCollection.Channel_170'; 
mirnv6_corr='MARTE_NODE_IVO3.DataCollection.Channel_171';
mirnv7_corr='MARTE_NODE_IVO3.DataCollection.Channel_172';
mirnv8_corr='MARTE_NODE_IVO3.DataCollection.Channel_173'; 
mirnv9_corr='MARTE_NODE_IVO3.DataCollection.Channel_174';
mirnv10_corr='MARTE_NODE_IVO3.DataCollection.Channel_175';
mirnv11_corr='MARTE_NODE_IVO3.DataCollection.Channel_176';
mirnv12_corr='MARTE_NODE_IVO3.DataCollection.Channel_177';

ext_flux1='MARTE_NODE_IVO3.DataCollection.Channel_214'; 
ext_flux2='MARTE_NODE_IVO3.DataCollection.Channel_215';
ext_flux3='MARTE_NODE_IVO3.DataCollection.Channel_216';
ext_flux4='MARTE_NODE_IVO3.DataCollection.Channel_217';
ext_flux5='MARTE_NODE_IVO3.DataCollection.Channel_218'; 
ext_flux6='MARTE_NODE_IVO3.DataCollection.Channel_219';
ext_flux7='MARTE_NODE_IVO3.DataCollection.Channel_220';
ext_flux8='MARTE_NODE_IVO3.DataCollection.Channel_221'; 
ext_flux9='MARTE_NODE_IVO3.DataCollection.Channel_222';
ext_flux10='MARTE_NODE_IVO3.DataCollection.Channel_223';
ext_flux11='MARTE_NODE_IVO3.DataCollection.Channel_224';
ext_flux12='MARTE_NODE_IVO3.DataCollection.Channel_225';

mirnv_corr_flux1='MARTE_NODE_IVO3.DataCollection.Channel_202'; 
mirnv_corr_flux2='MARTE_NODE_IVO3.DataCollection.Channel_203';
mirnv_corr_flux3='MARTE_NODE_IVO3.DataCollection.Channel_204';
mirnv_corr_flux4='MARTE_NODE_IVO3.DataCollection.Channel_205';
mirnv_corr_flux5='MARTE_NODE_IVO3.DataCollection.Channel_206'; 
mirnv_corr_flux6='MARTE_NODE_IVO3.DataCollection.Channel_207';
mirnv_corr_flux7='MARTE_NODE_IVO3.DataCollection.Channel_208';
mirnv_corr_flux8='MARTE_NODE_IVO3.DataCollection.Channel_209'; 
mirnv_corr_flux9='MARTE_NODE_IVO3.DataCollection.Channel_210';
mirnv_corr_flux10='MARTE_NODE_IVO3.DataCollection.Channel_211';
mirnv_corr_flux11='MARTE_NODE_IVO3.DataCollection.Channel_212';
mirnv_corr_flux12='MARTE_NODE_IVO3.DataCollection.Channel_213';

mirnv_SVD_recon1='MARTE_NODE_IVO3.DataCollection.Channel_231'; 
mirnv_SVD_recon2='MARTE_NODE_IVO3.DataCollection.Channel_232';
mirnv_SVD_recon3='MARTE_NODE_IVO3.DataCollection.Channel_233';
mirnv_SVD_recon4='MARTE_NODE_IVO3.DataCollection.Channel_234';
mirnv_SVD_recon5='MARTE_NODE_IVO3.DataCollection.Channel_235'; 
mirnv_SVD_recon6='MARTE_NODE_IVO3.DataCollection.Channel_236';
mirnv_SVD_recon7='MARTE_NODE_IVO3.DataCollection.Channel_237';
mirnv_SVD_recon8='MARTE_NODE_IVO3.DataCollection.Channel_238'; 
mirnv_SVD_recon9='MARTE_NODE_IVO3.DataCollection.Channel_239';
mirnv_SVD_recon10='MARTE_NODE_IVO3.DataCollection.Channel_240';
mirnv_SVD_recon11='MARTE_NODE_IVO3.DataCollection.Channel_241';
mirnv_SVD_recon12='MARTE_NODE_IVO3.DataCollection.Channel_242';

VerticalOutputWaveform='MARTE_NODE_IVO3.DataCollection.Channel_106';
HorizontalOutputWaveform='MARTE_NODE_IVO3.DataCollection.Channel_107';

SendToVertical='MARTE_NODE_IVO3.DataCollection.Channel_125';
SendToHorizontal='MARTE_NODE_IVO3.DataCollection.Channel_126';
PSVerticalLEM='MARTE_NODE_IVO3.DataCollection.Channel_164';
PSHorizontalLEM='MARTE_NODE_IVO3.DataCollection.Channel_163';

sumIfil='MARTE_NODE_IVO3.DataCollection.Channel_230';
RMSE_mirnv='MARTE_NODE_IVO3.DataCollection.Channel_229';

V_loop='MARTE_NODE_IVO3.DataCollection.Channel_095';

prim='MARTE_NODE_IVO3.DataCollection.Channel_093';
hor='MARTE_NODE_IVO3.DataCollection.Channel_091';
vert='MARTE_NODE_IVO3.DataCollection.Channel_092';

Ip_rog='MARTE_NODE_IVO3.DataCollection.Channel_088';
chopper='MARTE_NODE_IVO3.DataCollection.Channel_141';
Ip_magn='MARTE_NODE_IVO3.DataCollection.Channel_085';
Ip_magn_corr='MARTE_NODE_IVO3.DataCollection.Channel_228';

R0='MARTE_NODE_IVO3.DataCollection.Channel_083';
z0='MARTE_NODE_IVO3.DataCollection.Channel_084';
R0_corr='MARTE_NODE_IVO3.DataCollection.Channel_226';
z0_corr='MARTE_NODE_IVO3.DataCollection.Channel_227';
R0_Kalman='MARTE_NODE_IVO3.DataCollection.Channel_243';
Z0_Kalman='MARTE_NODE_IVO3.DataCollection.Channel_244';
Dis_stat='MARTE_NODE_IVO3.DataCollection.Channel_075';

[Dis_stat,Dis_stat_t]=LoadSdasData(client, Dis_stat, shotnr1);


[mirnv(1,:),mirnv1_t]=LoadSdasData(client, mirnv1, shotnr1);
[mirnv(2,:),mirnv2_t]=LoadSdasData(client, mirnv2, shotnr1);
[mirnv(3,:),mirnv3_t]=LoadSdasData(client, mirnv3, shotnr1);
[mirnv(4,:),mirnv4_t]=LoadSdasData(client, mirnv4, shotnr1);
[mirnv(5,:),mirnv5_t]=LoadSdasData(client, mirnv5, shotnr1);
[mirnv(6,:),mirnv6_t]=LoadSdasData(client, mirnv6, shotnr1);
[mirnv(7,:),mirnv7_t]=LoadSdasData(client, mirnv7, shotnr1);
[mirnv(8,:),mirnv8_t]=LoadSdasData(client, mirnv8, shotnr1);
[mirnv(9,:),mirnv9_t]=LoadSdasData(client, mirnv9, shotnr1);
[mirnv(10,:),mirnv10_t]=LoadSdasData(client, mirnv10, shotnr1);
[mirnv(11,:),mirnv11_t]=LoadSdasData(client, mirnv11, shotnr1);
[mirnv(12,:),mirnv12_t]=LoadSdasData(client, mirnv12, shotnr1);


[mirnv_raw(1,:),mirnv1_raw_t]=LoadSdasData(client, mirnv1_raw, shotnr1);
[mirnv_raw(2,:),mirnv2_raw_t]=LoadSdasData(client, mirnv2_raw, shotnr1);
[mirnv_raw(3,:),mirnv3_raw_t]=LoadSdasData(client, mirnv3_raw, shotnr1);
[mirnv_raw(4,:),mirnv4_raw_t]=LoadSdasData(client, mirnv4_raw, shotnr1);
[mirnv_raw(5,:),mirnv5_raw_t]=LoadSdasData(client, mirnv5_raw, shotnr1);
[mirnv_raw(6,:),mirnv6_raw_t]=LoadSdasData(client, mirnv6_raw, shotnr1);
[mirnv_raw(7,:),mirnv7_raw_t]=LoadSdasData(client, mirnv7_raw, shotnr1);
[mirnv_raw(8,:),mirnv8_raw_t]=LoadSdasData(client, mirnv8_raw, shotnr1);
[mirnv_raw(9,:),mirnv9_raw_t]=LoadSdasData(client, mirnv9_raw, shotnr1);
[mirnv_raw(10,:),mirnv10_raw_t]=LoadSdasData(client, mirnv10_raw, shotnr1);
[mirnv_raw(11,:),mirnv11_raw_t]=LoadSdasData(client, mirnv11_raw, shotnr1);
[mirnv_raw(12,:),mirnv12_raw_t]=LoadSdasData(client, mirnv12_raw, shotnr1);
% 
[mirnv_corr(1,:),mirnv1_corr_t]=LoadSdasData(client, mirnv1_corr, shotnr1);
[mirnv_corr(2,:),mirnv2_corr_t]=LoadSdasData(client, mirnv2_corr, shotnr1);
[mirnv_corr(3,:),mirnv3_corr_t]=LoadSdasData(client, mirnv3_corr, shotnr1);
[mirnv_corr(4,:),mirnv4_corr_t]=LoadSdasData(client, mirnv4_corr, shotnr1);
[mirnv_corr(5,:),mirnv5_corr_t]=LoadSdasData(client, mirnv5_corr, shotnr1);
[mirnv_corr(6,:),mirnv6_corr_t]=LoadSdasData(client, mirnv6_corr, shotnr1);
[mirnv_corr(7,:),mirnv7_corr_t]=LoadSdasData(client, mirnv7_corr, shotnr1);
[mirnv_corr(8,:),mirnv8_corr_t]=LoadSdasData(client, mirnv8_corr, shotnr1);
[mirnv_corr(9,:),mirnv9_corr_t]=LoadSdasData(client, mirnv9_corr, shotnr1);
[mirnv_corr(10,:),mirnv10_corr_t]=LoadSdasData(client, mirnv10_corr, shotnr1);
[mirnv_corr(11,:),mirnv11_corr_t]=LoadSdasData(client, mirnv11_corr, shotnr1);
[mirnv_corr(12,:),mirnv12_corr_t]=LoadSdasData(client, mirnv12_corr, shotnr1);

[ext_flux(1,:),ext_flux1_t]=LoadSdasData(client, ext_flux1, shotnr1);
[ext_flux(2,:),ext_flux2_t]=LoadSdasData(client, ext_flux2, shotnr1);
[ext_flux(3,:),ext_flux3_t]=LoadSdasData(client, ext_flux3, shotnr1);
[ext_flux(4,:),ext_flux4_t]=LoadSdasData(client, ext_flux4, shotnr1);
[ext_flux(5,:),ext_flux5_t]=LoadSdasData(client, ext_flux5, shotnr1);
[ext_flux(6,:),ext_flux6_t]=LoadSdasData(client, ext_flux6, shotnr1);
[ext_flux(7,:),ext_flux7_t]=LoadSdasData(client, ext_flux7, shotnr1);
[ext_flux(8,:),ext_flux8_t]=LoadSdasData(client, ext_flux8, shotnr1);
[ext_flux(9,:),ext_flux9_t]=LoadSdasData(client, ext_flux9, shotnr1);
[ext_flux(10,:),ext_flux10_t]=LoadSdasData(client, ext_flux10, shotnr1);
[ext_flux(11,:),ext_flux11_t]=LoadSdasData(client, ext_flux11, shotnr1);
[ext_flux(12,:),ext_flux12_t]=LoadSdasData(client, ext_flux12, shotnr1);

[mirnv_corr_flux(1,:),mirnv_corr_flux1_t]=LoadSdasData(client, mirnv_corr_flux1, shotnr1);
[mirnv_corr_flux(2,:),mirnv_corr_flux2_t]=LoadSdasData(client, mirnv_corr_flux2, shotnr1);
[mirnv_corr_flux(3,:),mirnv_corr_flux3_t]=LoadSdasData(client, mirnv_corr_flux3, shotnr1);
[mirnv_corr_flux(4,:),mirnv_corr_flux4_t]=LoadSdasData(client, mirnv_corr_flux4, shotnr1);
[mirnv_corr_flux(5,:),mirnv_corr_flux5_t]=LoadSdasData(client, mirnv_corr_flux5, shotnr1);
[mirnv_corr_flux(6,:),mirnv_corr_flux6_t]=LoadSdasData(client, mirnv_corr_flux6, shotnr1);
[mirnv_corr_flux(7,:),mirnv_corr_flux7_t]=LoadSdasData(client, mirnv_corr_flux7, shotnr1);
[mirnv_corr_flux(8,:),mirnv_corr_flux8_t]=LoadSdasData(client, mirnv_corr_flux8, shotnr1);
[mirnv_corr_flux(9,:),mirnv_corr_flux9_t]=LoadSdasData(client, mirnv_corr_flux9, shotnr1);
[mirnv_corr_flux(10,:),mirnv_corr_flux10_t]=LoadSdasData(client, mirnv_corr_flux10, shotnr1);
[mirnv_corr_flux(11,:),mirnv_corr_flux11_t]=LoadSdasData(client, mirnv_corr_flux11, shotnr1);
[mirnv_corr_flux(12,:),mirnv_corr_flux12_t]=LoadSdasData(client, mirnv_corr_flux12, shotnr1);

[mirnv_SVD_recon(1,:),mirnv_SVD_recon1_t]=LoadSdasData(client, mirnv_SVD_recon1, shotnr1);
[mirnv_SVD_recon(2,:),mirnv_SVD_recon2_t]=LoadSdasData(client, mirnv_SVD_recon2, shotnr1);
[mirnv_SVD_recon(3,:),mirnv_SVD_recon3_t]=LoadSdasData(client, mirnv_SVD_recon3, shotnr1);
[mirnv_SVD_recon(4,:),mirnv_SVD_recon4_t]=LoadSdasData(client, mirnv_SVD_recon4, shotnr1);
[mirnv_SVD_recon(5,:),mirnv_SVD_recon5_t]=LoadSdasData(client, mirnv_SVD_recon5, shotnr1);
[mirnv_SVD_recon(6,:),mirnv_SVD_recon6_t]=LoadSdasData(client, mirnv_SVD_recon6, shotnr1);
[mirnv_SVD_recon(7,:),mirnv_SVD_recon7_t]=LoadSdasData(client, mirnv_SVD_recon7, shotnr1);
[mirnv_SVD_recon(8,:),mirnv_SVD_recon8_t]=LoadSdasData(client, mirnv_SVD_recon8, shotnr1);
[mirnv_SVD_recon(9,:),mirnv_SVD_recon9_t]=LoadSdasData(client, mirnv_SVD_recon9, shotnr1);
[mirnv_SVD_recon(10,:),mirnv_SVD_recon10_t]=LoadSdasData(client, mirnv_SVD_recon10, shotnr1);
[mirnv_SVD_recon(11,:),mirnv_SVD_recon11_t]=LoadSdasData(client, mirnv_SVD_recon11, shotnr1);
[mirnv_SVD_recon(12,:),mirnv_SVD_recon12_t]=LoadSdasData(client, mirnv_SVD_recon12, shotnr1);

[V_loop,V_loop_t]=LoadSdasData(client, V_loop, shotnr1);

[VerticalOutputWaveform,VerticalOutputWaveform_t]=LoadSdasData(client,VerticalOutputWaveform, shotnr1);
[HorizontalOutputWaveform,HorizontalOutputWaveform_t]=LoadSdasData(client, HorizontalOutputWaveform, shotnr1);


[SendToVertical,SendToVertical_t]=LoadSdasData(client,SendToVertical, shotnr1);
[SendToHorizontal,SenToHorizontal_t]=LoadSdasData(client, SendToHorizontal, shotnr1);
[PSVerticalLEM,PSVerticalLEM_t]=LoadSdasData(client,PSVerticalLEM, shotnr1);
[PSHorizontalLEM,PSHorizontalLEM_t]=LoadSdasData(client, PSHorizontalLEM, shotnr1);


[sumIfil,sumIfil_t]=LoadSdasData(client, sumIfil, shotnr1);

[prim,prim_t]=LoadSdasData(client, prim, shotnr1);
[vert,vert_t]=LoadSdasData(client, vert, shotnr1);
[hor,hort_t]=LoadSdasData(client, hor, shotnr1);

[Ip_rog,t]=LoadSdasData(client, Ip_rog, shotnr1);
[Ip_magn,t]=LoadSdasData(client, Ip_magn, shotnr1);
[Ip_magn_corr,t]=LoadSdasData(client, Ip_magn_corr, shotnr1);
[R0_corr,R0_corr_t]=LoadSdasData(client, R0_corr, shotnr1);
[z0_corr,z0_corr_t]=LoadSdasData(client, z0_corr, shotnr1);
[R0,R0_t]=LoadSdasData(client, R0, shotnr1);
[z0,z0_t]=LoadSdasData(client, z0, shotnr1);
[R0_Kalman,R0_t]=LoadSdasData(client, R0_Kalman, shotnr1);
[Z0_Kalman,z0_t]=LoadSdasData(client, Z0_Kalman, shotnr1);

[chopper,choppert]=LoadSdasData(client, chopper, shotnr1);

data.shot=shotnr1;
data.chopper=chopper;
data.time=t;
data.Dis_stat=Dis_stat;
data.Ip=Ip_rog;
data.Ip_magn=Ip_magn;
data.Ip_magn_corr=Ip_magn_corr;

data.mirnv=mirnv;
data.mirnv_corr=mirnv_corr;
data.mirnv_raw=mirnv_raw;
data.ext_flux=ext_flux;
data.mirnv_corr_flux=mirnv_corr_flux;
data.mirnv_SVD_recons=mirnv_SVD_recon;

data.sumIfil=sumIfil;
data.VerticalWaveform=VerticalOutputWaveform;
data.HorizontalWaveform=HorizontalOutputWaveform;
data.SendToHorizontal=SendToHorizontal;
data.SendToVertical=SendToVertical;
data.PSVerticalLEM=PSVerticalLEM;
data.PSHorizontalLEM=PSHorizontalLEM;

data.prim=prim;
data.vert=vert;
data.hor=hor;
data.Vloop=V_loop;
data.R0=R0;
data.z0=z0;
data.R0_corr=R0_corr;
data.z0_corr=z0_corr;
data.R0_Kalman=R0_Kalman;
data.z0_Kalman=Z0_Kalman;

data.info='Plasma';
file= strcat('shot_',num2str(shotnr1),'.mat');
save(file, 'data');
