# classes2.dex

.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .registers 9

    new-instance v7, Landroid/media/AudioFormat;

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    iget v2, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iget v3, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iget v5, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFormat;-><init>(IIIIILandroid/media/AudioFormat-IA;)V

    return-object v0
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .registers 5

    if-eqz p1, :cond_3d

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    if-eqz v0, :cond_34

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_34

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for index mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_34
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel index mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .registers 5

    if-eqz p1, :cond_3d

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    if-eqz v0, :cond_34

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_34

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_34
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    goto :goto_23

    :sswitch_1f
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    nop

    :goto_23
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1c
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1c
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1c
        0xa -> :sswitch_1c
        0xb -> :sswitch_1c
        0xc -> :sswitch_1c
        0xd -> :sswitch_1c
        0xe -> :sswitch_1c
        0xf -> :sswitch_1c
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1c
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1c
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1c
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1c
    .end sparse-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_13

    :cond_a
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
