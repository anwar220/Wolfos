# classes4.dex

.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReturnType"
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x2

.field public static final DOUBLE:I = 0x6

.field public static final INT:I = 0x4

.field public static final LONG:I = 0x5

.field public static final OBJECT:I = 0x3

.field public static final VOID:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lambdaSuffix(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->suffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, ""

    return-object v0

    :pswitch_6  #0x6
    const-string v0, "Double"

    return-object v0

    :pswitch_9  #0x5
    const-string v0, "Long"

    return-object v0

    :pswitch_c  #0x4
    const-string v0, "Int"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_c  #00000004
        :pswitch_9  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method private static suffix(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "Supplier"

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "Function"

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "Predicate"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "Consumer"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method static toString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x6
    const-string v0, "DOUBLE"

    return-object v0

    :pswitch_1a  #0x5
    const-string v0, "LONG"

    return-object v0

    :pswitch_1d  #0x4
    const-string v0, "INT"

    return-object v0

    :pswitch_20  #0x3
    const-string v0, "OBJECT"

    return-object v0

    :pswitch_23  #0x2
    const-string v0, "BOOLEAN"

    return-object v0

    :pswitch_26  #0x1
    const-string v0, "VOID"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_23  #00000002
        :pswitch_20  #00000003
        :pswitch_1d  #00000004
        :pswitch_1a  #00000005
        :pswitch_17  #00000006
    .end packed-switch
.end method
