# classes4.dex

.class public final Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsCbHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCodingScheme"
.end annotation


# instance fields
.field public final encoding:I

.field public final hasLanguageIndicator:Z

.field public final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_66

    :pswitch_e  #0x8, 0xa, 0xb, 0xc, 0xd
    const/4 v0, 0x1

    goto :goto_5f

    :pswitch_10  #0xf
    and-int/lit8 v3, p1, 0x4

    shr-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_18

    const/4 v0, 0x2

    goto :goto_5f

    :cond_18
    const/4 v0, 0x1

    goto :goto_5f

    :pswitch_1a  #0x6, 0x7, 0x9, 0xe
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_33  #0x4, 0x5
    and-int/lit8 v3, p1, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_8a

    const/4 v0, 0x1

    goto :goto_5f

    :pswitch_3c  #0x2
    const/4 v0, 0x3

    goto :goto_5f

    :pswitch_3e  #0x1
    const/4 v0, 0x2

    goto :goto_5f

    :pswitch_40  #0x3
    const/4 v0, 0x1

    goto :goto_5f

    :pswitch_42  #0x2
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_2()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    goto :goto_5f

    :pswitch_4c  #0x1
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0xf

    if-ne v3, v4, :cond_53

    const/4 v0, 0x3

    goto :goto_5f

    :cond_53
    const/4 v0, 0x1

    goto :goto_5f

    :pswitch_55  #0x0
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->-$$Nest$sfgetLANGUAGE_CODES_GROUP_0()[Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p1, 0xf

    aget-object v1, v3, v4

    nop

    :goto_5f
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->encoding:I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->language:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader$DataCodingScheme;->hasLanguageIndicator:Z

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_55  #00000000
        :pswitch_4c  #00000001
        :pswitch_42  #00000002
        :pswitch_40  #00000003
        :pswitch_33  #00000004
        :pswitch_33  #00000005
        :pswitch_1a  #00000006
        :pswitch_1a  #00000007
        :pswitch_e  #00000008
        :pswitch_1a  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_e  #0000000c
        :pswitch_e  #0000000d
        :pswitch_1a  #0000000e
        :pswitch_10  #0000000f
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3c  #00000002
    .end packed-switch
.end method
