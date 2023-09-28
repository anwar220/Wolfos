# classes2.dex

.class public final Landroid/media/EncoderProfiles$AudioProfile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioProfile"
.end annotation


# instance fields
.field private bitrate:I

.field private channels:I

.field private codec:I

.field private profile:I

.field private sampleRate:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    iput p2, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    iput p3, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    iput p4, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    iput p5, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    return v0
.end method

.method public getChannels()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    return v0
.end method

.method public getCodec()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "audio/3gpp"

    return-object v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const-string v0, "audio/amr-wb"

    return-object v0

    :cond_e
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    goto :goto_2c

    :cond_18
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    const-string v0, "audio/vorbis"

    return-object v0

    :cond_1e
    const/4 v1, 0x7

    if-ne v0, v1, :cond_24

    const-string v0, "audio/opus"

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown codec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    const-string v0, "audio/mp4a-latm"

    return-object v0
.end method

.method public getProfile()I
    .registers 4

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    if-ne v0, v2, :cond_11

    const/16 v0, 0x27

    return v0

    :cond_11
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    return v0
.end method
