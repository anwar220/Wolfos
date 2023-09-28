# classes2.dex

.class public final Landroid/media/musicrecognition/RecognitionRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/RecognitionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:Landroid/media/AudioFormat;

.field private mCaptureSession:I

.field private mIgnoreBeginningFrames:I

.field private mMaxAudioLengthSeconds:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioAttributes(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioFormat(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioFormat;
    .registers 1

    iget-object p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSession(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreBeginningFrames(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxAudioLengthSeconds(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    const/16 v0, 0x18

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/musicrecognition/RecognitionRequest;
    .registers 3

    new-instance v0, Landroid/media/musicrecognition/RecognitionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/musicrecognition/RecognitionRequest;-><init>(Landroid/media/musicrecognition/RecognitionRequest$Builder;Landroid/media/musicrecognition/RecognitionRequest-IA;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public setCaptureSession(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    return-object p0
.end method

.method public setIgnoreBeginningFrames(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    return-object p0
.end method

.method public setMaxAudioLengthSeconds(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    return-object p0
.end method
