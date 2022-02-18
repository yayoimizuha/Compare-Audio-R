library(tuneR)

radio<-readWave("radio.wav")

radio_x<-radio@left
radio_fs<-radio@samp.rate
radio_nbits<-radio@bit

radio_x_graph <- radio_x[1:radio_fs*28]

radio_t <- seq(from=0,to=length(radio_x_graph)-1) /radio_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
radio_y <- fft(radio_x_graph)

radio_y.tmp <- Mod(radio_y)
#plot(radio_t,radio_y.tmp,type='h')
radio_y.ampspec <- radio_y.tmp[1:(length(radio_y)/2+1)]


radio_f<-seq(from=0,to=radio_fs/2,length=length(radio_y)/2+1)

radio_y.dB <- 10*log10(radio_y.ampspec^2)
png("radio_left.png",width=3840,height=2160)
plot(radio_f,radio_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()
png("radio_left_log.png",width=3840,height=2160)
plot(radio_f,radio_y.dB-max(radio_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()
dev.off()

radio_x<-radio@right
radio_fs<-radio@samp.rate
radio_nbits<-radio@bit

radio_x_graph <- radio_x[1:radio_fs*28]

radio_t <- seq(from=0,to=length(radio_x_graph)-1) /radio_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
radio_y <- fft(radio_x_graph)

radio_y.tmp <- Mod(radio_y)
#plot(radio_t,radio_y.tmp,type='h')
radio_y.ampspec <- radio_y.tmp[1:(length(radio_y)/2+1)]

radio_f<-seq(from=0,to=radio_fs/2,length=length(radio_y)/2+1)

radio_y.dB <- 10*log10(radio_y.ampspec^2)
png("radio_right.png",width=3840,height=2160)
plot(radio_f,radio_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()
png("radio_right_log.png",width=3840,height=2160)
plot(radio_f,radio_y.dB-max(radio_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()
dev.off()

youtube<-readWave("youtube.wav")

youtube_x<-youtube@left
youtube_fs<-youtube@samp.rate
youtube_nbits<-youtube@bit

youtube_x_graph <- youtube_x[1:youtube_fs*28]

youtube_t <- seq(from=0,to=length(youtube_x_graph)-1) /youtube_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
youtube_y <- fft(youtube_x_graph)

youtube_y.tmp <- Mod(youtube_y)
#plot(radio_t,radio_y.tmp,type='h')
youtube_y.ampspec <- youtube_y.tmp[1:(length(youtube_y)/2+1)]

youtube_f<-seq(from=0,to=youtube_fs/2,length=length(youtube_y)/2+1)


png("youtube_left.png",width=3840,height=2160)
plot(youtube_f,youtube_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()

png("youtube_left_log.png",width=3840,height=2160)
youtube_y.dB <- 10*log10(youtube_y.ampspec^2)
plot(youtube_f,youtube_y.dB-max(youtube_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()


youtube_x<-youtube@right
youtube_fs<-youtube@samp.rate
youtube_nbits<-youtube@bit

youtube_x_graph <- youtube_x[1:youtube_fs*28]

youtube_t <- seq(from=0,to=length(youtube_x_graph)-1) /youtube_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
youtube_y <- fft(youtube_x_graph)

youtube_y.tmp <- Mod(youtube_y)
#plot(radio_t,radio_y.tmp,type='h')
youtube_y.ampspec <- youtube_y.tmp[1:(length(youtube_y)/2+1)]

youtube_f<-seq(from=0,to=youtube_fs/2,length=length(youtube_y)/2+1)


png("youtube_right.png",width=3840,height=2160)
plot(youtube_f,youtube_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()

png("youtube_right_log.png",width=3840,height=2160)
youtube_y.dB <- 10*log10(youtube_y.ampspec^2)
plot(youtube_f,youtube_y.dB-max(youtube_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()
dev.off()

itunes<-readWave("itunes.wav")

itunes_x<-itunes@left
itunes_fs<-itunes@samp.rate
itunes_nbits<-itunes@bit

itunes_x_graph <- itunes_x[1:itunes_fs*28]

itunes_t <- seq(from=0,to=length(itunes_x_graph)-1) /itunes_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
itunes_y <- fft(itunes_x_graph)

itunes_y.tmp <- Mod(itunes_y)
#plot(radio_t,radio_y.tmp,type='h')
itunes_y.ampspec <- itunes_y.tmp[1:(length(itunes_y)/2+1)]

itunes_f<-seq(from=0,to=itunes_fs/2,length=length(itunes_y)/2+1)


png("itunes_left.png",width=3840,height=2160)
plot(itunes_f,itunes_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()

png("itunes_left_log.png",width=3840,height=2160)
itunes_y.dB <- 10*log10(itunes_y.ampspec^2)
plot(itunes_f,itunes_y.dB-max(itunes_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()
dev.off()

itunes_x<-itunes@right
itunes_fs<-itunes@samp.rate
itunes_nbits<-itunes@bit

itunes_x_graph <- itunes_x[1:itunes_fs*28]

itunes_t <- seq(from=0,to=length(itunes_x_graph)-1) /itunes_fs
#plot(radio_t,radio_x_graph,type='l',xlab="Time(s)",ylab="Amplitude",ylim=c(-(2^(radio_nbits-1)),(2^(radio_nbits-1))-1))
#grid()
itunes_y <- fft(itunes_x_graph)

itunes_y.tmp <- Mod(itunes_y)
#plot(radio_t,radio_y.tmp,type='h')
itunes_y.ampspec <- itunes_y.tmp[1:(length(itunes_y)/2+1)]

itunes_f<-seq(from=0,to=itunes_fs/2,length=length(itunes_y)/2+1)


png("itunes_right.png",width=3840,height=2160)
plot(itunes_f,itunes_y.ampspec,type='h',xlab="Frequency (Hz)", ylab="Amplitude Spectrum", xlim=c(20, 20000))
grid()
dev.off()

png("itunes_right_log.png",width=3840,height=2160)
itunes_y.dB <- 10*log10(itunes_y.ampspec^2)
plot(itunes_f,itunes_y.dB-max(itunes_y.dB),log="x",type='l',xlab="Frequency (Hz)", ylab="Power(dB)", xlim=c(20, 20000),ylim=c(-100,0))
grid()
dev.off()
