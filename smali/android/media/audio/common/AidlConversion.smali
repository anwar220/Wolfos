# classes2.dex

.class public Landroid/media/audio/common/AidlConversion;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    :goto_3
    if-eqz v1, :cond_18

    and-int v2, p0, v1

    if-ne v2, v1, :cond_15

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I

    move-result v2

    if-eqz v2, :cond_18

    or-int/2addr v0, v2

    not-int v3, v1

    and-int/2addr p0, v3

    if-nez p0, :cond_15

    return v0

    :cond_15
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private static aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I
    .registers 12

    const/4 v0, 0x0

    const/high16 v1, 0x400000

    const/high16 v2, 0x200000

    const/high16 v3, 0x100000

    const/high16 v4, 0x40000

    const/high16 v5, 0x20000

    const/high16 v6, 0x10000

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz p1, :cond_21

    sparse-switch p0, :sswitch_data_68

    return v0

    :sswitch_18
    return v1

    :sswitch_19
    return v2

    :sswitch_1a
    return v7

    :sswitch_1b
    return v5

    :sswitch_1c
    return v6

    :sswitch_1d
    return v3

    :sswitch_1e
    return v4

    :sswitch_1f
    return v8

    :sswitch_20
    return v9

    :cond_21
    sparse-switch p0, :sswitch_data_8e

    return v0

    :sswitch_25
    const/high16 v0, 0x20000000

    return v0

    :sswitch_28
    const/high16 v0, 0x10000000

    return v0

    :sswitch_2b
    const/high16 v0, 0x8000000

    return v0

    :sswitch_2e
    const/high16 v0, 0x4000000

    return v0

    :sswitch_31
    const/high16 v0, 0x2000000

    return v0

    :sswitch_34
    const/high16 v0, 0x1000000

    return v0

    :sswitch_37
    const/high16 v0, 0x800000

    return v0

    :sswitch_3a
    return v1

    :sswitch_3b
    return v2

    :sswitch_3c
    return v3

    :sswitch_3d
    const/high16 v0, 0x80000

    return v0

    :sswitch_40
    return v4

    :sswitch_41
    return v5

    :sswitch_42
    return v6

    :sswitch_43
    const v0, 0x8000

    return v0

    :sswitch_47
    const/16 v0, 0x4000

    return v0

    :sswitch_4a
    const/16 v0, 0x2000

    return v0

    :sswitch_4d
    const/16 v0, 0x1000

    return v0

    :sswitch_50
    const/16 v0, 0x800

    return v0

    :sswitch_53
    const/16 v0, 0x400

    return v0

    :sswitch_56
    const/16 v0, 0x200

    return v0

    :sswitch_59
    const/16 v0, 0x100

    return v0

    :sswitch_5c
    const/16 v0, 0x80

    return v0

    :sswitch_5f
    const/16 v0, 0x40

    return v0

    :sswitch_62
    return v7

    :sswitch_63
    const/16 v0, 0x10

    return v0

    :sswitch_66
    return v8

    :sswitch_67
    return v9

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x100 -> :sswitch_1a
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_66
        0x4 -> :sswitch_63
        0x8 -> :sswitch_62
        0x10 -> :sswitch_5f
        0x20 -> :sswitch_5c
        0x40 -> :sswitch_59
        0x80 -> :sswitch_56
        0x100 -> :sswitch_53
        0x200 -> :sswitch_50
        0x400 -> :sswitch_4d
        0x800 -> :sswitch_4a
        0x1000 -> :sswitch_47
        0x2000 -> :sswitch_43
        0x4000 -> :sswitch_42
        0x8000 -> :sswitch_41
        0x10000 -> :sswitch_40
        0x20000 -> :sswitch_3d
        0x40000 -> :sswitch_3c
        0x80000 -> :sswitch_3b
        0x100000 -> :sswitch_3a
        0x200000 -> :sswitch_37
        0x400000 -> :sswitch_34
        0x800000 -> :sswitch_31
        0x1000000 -> :sswitch_2e
        0x2000000 -> :sswitch_2b
        0x20000000 -> :sswitch_28
        0x40000000 -> :sswitch_25
    .end sparse-switch
.end method

.method public static aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .registers 4

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_ce

    return v1

    :pswitch_9  #0x4
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    sparse-switch v0, :sswitch_data_dc

    goto :goto_1e

    :sswitch_13
    const v0, 0xc010

    return v0

    :sswitch_17
    const v0, 0x8010

    return v0

    :sswitch_1b
    const/16 v0, 0x4010

    return v0

    :cond_1e
    :goto_1e
    return v1

    :pswitch_1f  #0x3
    const/16 v0, 0xc

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_ea

    goto/16 :goto_bc

    :sswitch_2c
    const v0, 0x74000c

    return v0

    :sswitch_30
    const v0, 0x70000c

    return v0

    :sswitch_34
    const v0, 0x64000c

    return v0

    :sswitch_38
    const v0, 0x60000c

    return v0

    :sswitch_3c
    const/16 v0, 0x30

    return v0

    :sswitch_3f
    const v0, 0x1700fc

    return v0

    :sswitch_43
    return v0

    :sswitch_44
    const/16 v0, 0x10

    return v0

    :cond_47
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_10c

    goto :goto_bc

    :sswitch_4f
    const v0, 0x3000000c

    return v0

    :sswitch_53
    const v0, 0x30000004

    return v0

    :sswitch_57
    const/high16 v0, 0x30000000

    return v0

    :sswitch_5a
    const v0, 0x2000000c

    return v0

    :sswitch_5e
    const v0, 0x20000004

    return v0

    :sswitch_62
    const v0, 0xc3b58fc

    return v0

    :sswitch_66
    const v0, 0xc0b58fc

    return v0

    :sswitch_6a
    const v0, 0x3fffffc

    return v0

    :sswitch_6e
    const v0, 0x1cbd81c

    return v0

    :sswitch_72
    const v0, 0x3018fc

    return v0

    :sswitch_76
    const v0, 0x3000fc

    return v0

    :sswitch_7a
    const v0, 0x30003c

    return v0

    :sswitch_7e
    const v0, 0x30002c

    return v0

    :sswitch_82
    const v0, 0x30001c

    return v0

    :sswitch_86
    const v0, 0x30000c

    return v0

    :sswitch_8a
    const v0, 0xb58fc

    return v0

    :sswitch_8e
    const v0, 0xb40fc

    return v0

    :sswitch_92
    const/16 v0, 0x18fc

    return v0

    :sswitch_95
    const/16 v0, 0x183c

    return v0

    :sswitch_98
    const/16 v0, 0x180c

    return v0

    :sswitch_9b
    const/16 v0, 0x4fc

    return v0

    :sswitch_9e
    const/16 v0, 0x41c

    return v0

    :sswitch_a1
    const/16 v0, 0x410

    return v0

    :sswitch_a4
    const/16 v0, 0x40c

    return v0

    :sswitch_a7
    const/16 v0, 0xfc

    return v0

    :sswitch_aa
    const/16 v0, 0xdc

    return v0

    :sswitch_ad
    const/16 v0, 0xcc

    return v0

    :sswitch_b0
    const/16 v0, 0x3c

    return v0

    :sswitch_b3
    const/16 v0, 0x2c

    return v0

    :sswitch_b6
    const/16 v0, 0x1c

    return v0

    :sswitch_b9
    return v0

    :sswitch_ba
    const/4 v0, 0x4

    return v0

    :goto_bc
    nop

    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I

    move-result v0

    return v0

    :pswitch_c6  #0x2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    return v0

    :pswitch_cb  #0x1
    return v1

    :pswitch_cc  #0x0
    const/4 v0, 0x1

    return v0

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_cc  #00000000
        :pswitch_cb  #00000001
        :pswitch_c6  #00000002
        :pswitch_1f  #00000003
        :pswitch_9  #00000004
    .end packed-switch

    :sswitch_data_dc
    .sparse-switch
        0x4000 -> :sswitch_1b
        0x8000 -> :sswitch_17
        0xc000 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_44
        0x3 -> :sswitch_43
        0x3f -> :sswitch_3f
        0x104 -> :sswitch_3c
        0xc0003 -> :sswitch_38
        0xc0007 -> :sswitch_34
        0xc000b -> :sswitch_30
        0xc000f -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_ba
        0x3 -> :sswitch_b9
        0x7 -> :sswitch_b6
        0xb -> :sswitch_b3
        0xf -> :sswitch_b0
        0x33 -> :sswitch_ad
        0x37 -> :sswitch_aa
        0x3f -> :sswitch_a7
        0x103 -> :sswitch_a4
        0x104 -> :sswitch_a1
        0x107 -> :sswitch_9e
        0x13f -> :sswitch_9b
        0x603 -> :sswitch_98
        0x60f -> :sswitch_95
        0x63f -> :sswitch_92
        0x2d03f -> :sswitch_8e
        0x2d63f -> :sswitch_8a
        0xc0003 -> :sswitch_86
        0xc0007 -> :sswitch_82
        0xc000b -> :sswitch_7e
        0xc000f -> :sswitch_7a
        0xc003f -> :sswitch_76
        0xc063f -> :sswitch_72
        0x72f607 -> :sswitch_6e
        0xffffff -> :sswitch_6a
        0x302d63f -> :sswitch_66
        0x30ed63f -> :sswitch_62
        0x40000001 -> :sswitch_5e
        0x40000003 -> :sswitch_5a
        0x60000000 -> :sswitch_57
        0x60000001 -> :sswitch_53
        0x60000003 -> :sswitch_4f
    .end sparse-switch
.end method

.method public static aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;
    .registers 5

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {v1}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    goto :goto_26

    :cond_1d
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    :goto_26
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public static aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .registers 3

    iget-object v0, p0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
    .end packed-switch
.end method

.method public static aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I
    .registers 5

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->type:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_152

    return v1

    :pswitch_7  #0x1
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    packed-switch v0, :pswitch_data_15a

    return v1

    :pswitch_d  #0x5
    const/16 v0, 0x15

    return v0

    :pswitch_10  #0x3, 0x4
    const/4 v0, 0x4

    return v0

    :pswitch_12  #0x2
    const/16 v0, 0x16

    return v0

    :pswitch_15  #0x1
    const/4 v0, 0x2

    return v0

    :pswitch_17  #0x0
    const/4 v0, 0x3

    return v0

    :pswitch_19  #0x0
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_151

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_151

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/ac3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x5

    return v0

    :cond_32
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/eac3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x6

    return v0

    :cond_3e
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/vnd.dts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x7

    return v0

    :cond_4a
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/vnd.dts.hd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x8

    return v0

    :cond_57
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mpeg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/16 v0, 0x9

    return v0

    :cond_64
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0xa

    return v0

    :cond_71
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.05"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v0, 0xb

    return v0

    :cond_7e
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.29"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/16 v0, 0xc

    return v0

    :cond_8b
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/x-iec61937"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    if-ne v0, v2, :cond_9c

    const/16 v0, 0xd

    return v0

    :cond_9c
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mlp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0xe

    return v0

    :cond_a9
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mp4a.40.39"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const/16 v0, 0xf

    return v0

    :cond_b6
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mp4a.40.42"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const/16 v0, 0x10

    return v0

    :cond_c3
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const/16 v0, 0x11

    return v0

    :cond_d0
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0x12

    return v0

    :cond_dd
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mat."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    goto :goto_14e

    :cond_f2
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/opus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    const/16 v0, 0x14

    return v0

    :cond_ff
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/16 v0, 0x17

    return v0

    :cond_10c
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    const/16 v0, 0x18

    return v0

    :cond_119
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.0d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    const/16 v0, 0x19

    return v0

    :cond_126
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.0e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    const/16 v0, 0x1a

    return v0

    :cond_133
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dts.uhd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    const/16 v0, 0x1b

    return v0

    :cond_140
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const/16 v0, 0x1c

    return v0

    :cond_14d
    return v1

    :cond_14e
    :goto_14e
    const/16 v0, 0x13

    return v0

    :cond_151
    return v2

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_7  #00000001
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_15  #00000001
        :pswitch_12  #00000002
        :pswitch_10  #00000003
        :pswitch_10  #00000004
        :pswitch_d  #00000005
    .end packed-switch
.end method

.method public static aidl2api_AudioStandard_AudioDescriptorStandard(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
    .end packed-switch
.end method

.method public static aidl2api_ExtraAudioDescriptor_AudioDescriptor(Landroid/media/audio/common/ExtraAudioDescriptor;)Landroid/media/AudioDescriptor;
    .registers 5

    new-instance v0, Landroid/media/AudioDescriptor;

    iget v1, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioStandard_AudioDescriptorStandard(I)I

    move-result v1

    iget v2, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    invoke-static {v2}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I

    move-result v2

    iget-object v3, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    return-object v0
.end method

.method private static native aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I
.end method

.method public static aidl2legacy_AudioChannelLayout_audio_channel_mask_t(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .registers 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_b
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static native aidl2legacy_AudioEncapsulationMode_audio_encapsulation_mode_t(I)I
.end method

.method private static native aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I
.end method

.method public static aidl2legacy_AudioFormatDescription_audio_format_t(Landroid/media/audio/common/AudioFormatDescription;)I
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioFormatDescription;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_b
    invoke-static {v0}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static native aidl2legacy_AudioStreamType_audio_stream_type_t(I)I
.end method

.method public static native aidl2legacy_AudioUsage_audio_usage_t(I)I
.end method

.method public static api2aidl_AudioDescriptorStandard_AudioStandard(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
    .end packed-switch
.end method

.method public static api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 3

    new-instance v0, Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {v0}, Landroid/media/audio/common/ExtraAudioDescriptor;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptorStandard_AudioStandard(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    nop

    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getEncapsulationType()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    return-object v0
.end method

.method public static api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;
    .registers 5

    new-instance v0, Landroid/media/audio/common/AudioPort;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPort;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/media/audio/common/AudioProfile;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/ExtraAudioDescriptor;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    new-instance v2, Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {v2}, Landroid/media/audio/common/AudioIoFlags;-><init>()V

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    new-array v2, v1, [Landroid/media/audio/common/AudioGain;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    new-instance v2, Landroid/media/audio/common/AudioPortDeviceExt;

    invoke-direct {v2}, Landroid/media/audio/common/AudioPortDeviceExt;-><init>()V

    new-instance v3, Landroid/media/audio/common/AudioDevice;

    invoke-direct {v3}, Landroid/media/audio/common/AudioDevice;-><init>()V

    iput-object v3, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    new-array v1, v1, [Landroid/media/audio/common/AudioFormatDescription;

    iput-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->encodedFormats:[Landroid/media/audio/common/AudioFormatDescription;

    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Landroid/media/audio/common/AidlConversion;->api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->type:Landroid/media/audio/common/AudioDeviceDescription;

    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audio/common/AudioDeviceAddress;->id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->address:Landroid/media/audio/common/AudioDeviceAddress;

    invoke-static {v2}, Landroid/media/audio/common/AudioPortExt;->device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    return-object v0
.end method

.method public static api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
    .end packed-switch
.end method

.method public static api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;
    .registers 17

    new-instance v0, Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceDescription;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    const-string v3, "hdmi-earc"

    const-string v4, "hdmi-arc"

    const-string v5, "bus"

    const-string v6, "ip-v4"

    const-string v7, "spdif"

    const-string v9, "hdmi"

    const/16 v10, 0x8c

    const/16 v11, 0x89

    const-string v12, "bt-a2dp"

    const-string v13, "bt-sco"

    const-string v15, "bt-le"

    const-string v8, "analog"

    const-string v14, "usb"

    const/16 v2, 0x85

    const/4 v1, 0x4

    sparse-switch p0, :sswitch_data_1a0

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_2e
    const/16 v1, 0x81

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_34
    const/16 v1, 0x92

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_3c
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_42
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_48
    const/16 v1, 0x86

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_4e
    const/16 v1, 0x8a

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    const-string v1, "wireless"

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_58
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_5e
    const/16 v1, 0x83

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_64
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_6a
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_70
    const/16 v1, 0x8e

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_76
    const/16 v1, 0x8b

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_7c
    const/16 v1, 0x87

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_82
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_88
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_8e
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_94
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_9a
    const/16 v1, 0x90

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_a0
    const/16 v1, 0x8f

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_a6
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_ac
    const/16 v1, 0x82

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_b4
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_bc
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_c4
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_ca
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_d0
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_d8
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_de
    const/16 v1, 0x84

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_e6
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_ec
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_f2
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_fa
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_100
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_104
    const/16 v1, 0x8d

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_10a
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_10f
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_116
    const/4 v1, 0x5

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_11b
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_121
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_127
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_12d
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_134
    const/4 v1, 0x3

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_19f

    :sswitch_139
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto/16 :goto_19f

    :sswitch_13f
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_144
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_149
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_14e
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_153
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_158
    const/16 v1, 0xd

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_15d
    const/4 v1, 0x6

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_161
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_166
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_16c
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_173
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_17a
    const/16 v1, 0xb

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_17f
    const/16 v1, 0xa

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_184
    const/16 v1, 0xc

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto :goto_19f

    :sswitch_189
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_18e
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_194
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    goto :goto_19f

    :sswitch_19a
    const/16 v1, 0x9

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    nop

    :goto_19f
    return-object v0

    :sswitch_data_1a0
    .sparse-switch
        -0x7ffffffc -> :sswitch_19a
        -0x7ffffff8 -> :sswitch_194
        -0x7ffffff0 -> :sswitch_18e
        -0x7fffffe0 -> :sswitch_189
        -0x7fffffc0 -> :sswitch_184
        -0x7fffff80 -> :sswitch_17f
        -0x7fffff00 -> :sswitch_17a
        -0x7ffffe00 -> :sswitch_173
        -0x7ffffc00 -> :sswitch_16c
        -0x7ffff800 -> :sswitch_166
        -0x7ffff000 -> :sswitch_161
        -0x7fffe000 -> :sswitch_15d
        -0x7fffc000 -> :sswitch_158
        -0x7fff8000 -> :sswitch_153
        -0x7fff0000 -> :sswitch_14e
        -0x7ffe0000 -> :sswitch_149
        -0x7ffc0000 -> :sswitch_144
        -0x7ff80000 -> :sswitch_13f
        -0x7ff00000 -> :sswitch_139
        -0x7f000000 -> :sswitch_134
        -0x7e000000 -> :sswitch_12d
        -0x7c000000 -> :sswitch_127
        -0x78000000 -> :sswitch_121
        -0x77ffffff -> :sswitch_11b
        -0x70000000 -> :sswitch_116
        -0x60000000 -> :sswitch_10f
        -0x40000000 -> :sswitch_10a
        0x1 -> :sswitch_104
        0x2 -> :sswitch_100
        0x4 -> :sswitch_fa
        0x8 -> :sswitch_f2
        0x10 -> :sswitch_ec
        0x20 -> :sswitch_e6
        0x40 -> :sswitch_de
        0x80 -> :sswitch_d8
        0x100 -> :sswitch_d0
        0x200 -> :sswitch_ca
        0x400 -> :sswitch_c4
        0x800 -> :sswitch_bc
        0x1000 -> :sswitch_b4
        0x2000 -> :sswitch_ac
        0x4000 -> :sswitch_a6
        0x8000 -> :sswitch_a0
        0x10000 -> :sswitch_9a
        0x20000 -> :sswitch_94
        0x40000 -> :sswitch_8e
        0x40001 -> :sswitch_88
        0x80000 -> :sswitch_82
        0x100000 -> :sswitch_7c
        0x200000 -> :sswitch_76
        0x400000 -> :sswitch_70
        0x800000 -> :sswitch_6a
        0x1000000 -> :sswitch_64
        0x2000000 -> :sswitch_5e
        0x4000000 -> :sswitch_58
        0x8000000 -> :sswitch_4e
        0x10000000 -> :sswitch_48
        0x20000000 -> :sswitch_42
        0x20000001 -> :sswitch_3c
        0x20000002 -> :sswitch_34
        0x40000000 -> :sswitch_2e
    .end sparse-switch
.end method

.method static synthetic lambda$api2aidl_AudioDeviceAttributes_AudioPort$0(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 2

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$api2aidl_AudioDeviceAttributes_AudioPort$1(I)[Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 2

    new-array v0, p0, [Landroid/media/audio/common/ExtraAudioDescriptor;

    return-object v0
.end method

.method public static legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;
    .registers 6

    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    sget-object v1, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioChannelLayout;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_29

    const-string v3, "input"

    goto :goto_2b

    :cond_29
    const-string v3, "output"

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audio_channel_mask_t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;
.end method

.method public static native legacy2aidl_audio_encapsulation_mode_t_AudioEncapsulationMode(I)I
.end method

.method public static legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;
    .registers 5

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    sget-object v1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioFormatDescription;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio_format_t value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;
.end method

.method public static native legacy2aidl_audio_stream_type_t_AudioStreamType(I)I
.end method

.method public static native legacy2aidl_audio_usage_t_AudioUsage(I)I
.end method
