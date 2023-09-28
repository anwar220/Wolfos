# classes3.dex

.class public final Landroid/telephony/AccessNetworkConstants$AccessNetworkType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessNetworkType"
.end annotation


# static fields
.field public static final CDMA2000:I = 0x4

.field public static final EUTRAN:I = 0x3

.field public static final GERAN:I = 0x1

.field public static final IWLAN:I = 0x5

.field public static final NGRAN:I = 0x6

.field public static final UNKNOWN:I = 0x0

.field public static final UTRAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRanToAnt(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x5
    const/4 v0, 0x4

    return v0

    :pswitch_7  #0x4
    const/4 v0, 0x6

    return v0

    :pswitch_9  #0x3
    const/4 v0, 0x3

    return v0

    :pswitch_b  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_d  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_b  #00000002
        :pswitch_9  #00000003
        :pswitch_7  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method

.method public static fromString(Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_74

    :cond_11
    goto :goto_4e

    :sswitch_12
    const-string v1, "EUTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v6

    goto :goto_4f

    :sswitch_1c
    const-string v1, "UTRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    goto :goto_4f

    :sswitch_26
    const-string v1, "NGRAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_4f

    :sswitch_30
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_4f

    :sswitch_3a
    const-string v1, "GERAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_4f

    :sswitch_44
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v5

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_8e

    invoke-static {}, Landroid/telephony/AccessNetworkConstants;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid access network type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_6d  #0x5
    const/4 v0, 0x6

    return v0

    :pswitch_6f  #0x4
    return v3

    :pswitch_70  #0x3
    return v4

    :pswitch_71  #0x2
    return v5

    :pswitch_72  #0x1
    return v6

    :pswitch_73  #0x0
    return v7

    :sswitch_data_74
    .sparse-switch
        -0x3bd8f00d -> :sswitch_44
        0x4091e61 -> :sswitch_3a
        0x42d658b -> :sswitch_30
        0x46caba6 -> :sswitch_26
        0x4d53900 -> :sswitch_1c
        0x7a939bdb -> :sswitch_12
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_72  #00000001
        :pswitch_71  #00000002
        :pswitch_70  #00000003
        :pswitch_6f  #00000004
        :pswitch_6d  #00000005
    .end packed-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x6
    const-string v0, "NGRAN"

    return-object v0

    :pswitch_b  #0x5
    const-string v0, "IWLAN"

    return-object v0

    :pswitch_e  #0x4
    const-string v0, "CDMA2000"

    return-object v0

    :pswitch_11  #0x3
    const-string v0, "EUTRAN"

    return-object v0

    :pswitch_14  #0x2
    const-string v0, "UTRAN"

    return-object v0

    :pswitch_17  #0x1
    const-string v0, "GERAN"

    return-object v0

    :pswitch_1a  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
    .end packed-switch
.end method
