# classes4.dex

.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
    }
.end annotation


# static fields
.field public static final MASK:I = 0x7f

.field public static final MASK_ARG_COUNT:I = 0xf

.field public static final MASK_BIT_COUNT:I = 0x7

.field public static final MASK_RETURN_TYPE:I = 0x70


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static argCountPrefix(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    packed-switch p0, :pswitch_data_3e

    :pswitch_5  #0xc, 0xd, 0xe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0xf
    return-object v0

    :pswitch_1e  #0xb
    const-string v0, "Undec"

    return-object v0

    :pswitch_21  #0xa
    const-string v0, "Dec"

    return-object v0

    :pswitch_24  #0x9
    const-string v0, "Nona"

    return-object v0

    :pswitch_27  #0x8
    const-string v0, "Oct"

    return-object v0

    :pswitch_2a  #0x7
    const-string v0, "Hept"

    return-object v0

    :pswitch_2d  #0x6
    const-string v0, "Hex"

    return-object v0

    :pswitch_30  #0x5
    const-string v0, "Quint"

    return-object v0

    :pswitch_33  #0x4
    const-string v0, "Quad"

    return-object v0

    :pswitch_36  #0x3
    const-string v0, "Tri"

    return-object v0

    :pswitch_39  #0x2
    const-string v0, "Bi"

    return-object v0

    :pswitch_3c  #0x1
    return-object v0

    :pswitch_3d  #0x0
    return-object v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_3c  #00000001
        :pswitch_39  #00000002
        :pswitch_36  #00000003
        :pswitch_33  #00000004
        :pswitch_30  #00000005
        :pswitch_2d  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_24  #00000009
        :pswitch_21  #0000000a
        :pswitch_1e  #0000000b
        :pswitch_5  #0000000c
        :pswitch_5  #0000000d
        :pswitch_5  #0000000e
        :pswitch_1d  #0000000f
    .end packed-switch
.end method

.method static decodeArgCount(I)I
    .registers 2

    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method static decodeReturnType(I)I
    .registers 2

    const/16 v0, 0x70

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smunmask(II)I

    move-result v0

    return v0
.end method

.method static encode(II)I
    .registers 4

    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result v0

    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static toString(I)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v1

    if-nez v0, :cond_19

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v2, "Runnable"

    return-object v2

    :cond_10
    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    :cond_16
    const-string v2, "Supplier"

    return-object v2

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->argCountPrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->lambdaSuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
