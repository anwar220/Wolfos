# classes.dex

.class public final Landroid/hardware/camera2/marshal/MarshalHelpers;
.super Ljava/lang/Object;


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT32:I = 0x4

.field public static final SIZEOF_INT64:I = 0x8

.field public static final SIZEOF_RATIONAL:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkNativeType(I)I
    .registers 4

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown nativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5
    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_1c  #00000001
        :pswitch_1c  #00000002
        :pswitch_1c  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method

.method public static checkNativeTypeEquals(II)I
    .registers 6

    if-ne p0, p1, :cond_3

    return p1

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Expected native type %d, but got %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isPrimitiveClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; expected a metadata primitive class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrimitiveTypeClass(I)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown nativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_1f  #0x3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_22  #0x2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_25  #0x1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_28  #0x0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method public static getPrimitiveTypeSize(I)I
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t get size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f  #0x5
    return v1

    :pswitch_20  #0x4
    return v1

    :pswitch_21  #0x3
    return v1

    :pswitch_22  #0x2
    return v0

    :pswitch_23  #0x1
    return v0

    :pswitch_24  #0x0
    const/4 v0, 0x1

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_23  #00000001
        :pswitch_22  #00000002
        :pswitch_21  #00000003
        :pswitch_20  #00000004
        :pswitch_1f  #00000005
    .end packed-switch
.end method

.method public static isPrimitiveClass(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq p0, v1, :cond_3c

    const-class v1, Ljava/lang/Byte;

    if-ne p0, v1, :cond_e

    goto :goto_3c

    :cond_e
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_3b

    const-class v1, Ljava/lang/Integer;

    if-ne p0, v1, :cond_17

    goto :goto_3b

    :cond_17
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_3a

    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_20

    goto :goto_3a

    :cond_20
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_39

    const-class v1, Ljava/lang/Long;

    if-ne p0, v1, :cond_29

    goto :goto_39

    :cond_29
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_38

    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_32

    goto :goto_38

    :cond_32
    const-class v1, Landroid/util/Rational;

    if-ne p0, v1, :cond_37

    return v2

    :cond_37
    return v0

    :cond_38
    :goto_38
    return v2

    :cond_39
    :goto_39
    return v2

    :cond_3a
    :goto_3a
    return v2

    :cond_3b
    :goto_3b
    return v2

    :cond_3c
    :goto_3c
    return v2
.end method

.method public static isUnwrappedPrimitiveClass(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_a

    return v2

    :cond_a
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_f

    return v2

    :cond_f
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_14

    return v2

    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_19

    return v2

    :cond_19
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public static toStringNativeType(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0x5
    const-string v0, "TYPE_RATIONAL"

    return-object v0

    :pswitch_20  #0x4
    const-string v0, "TYPE_DOUBLE"

    return-object v0

    :pswitch_23  #0x3
    const-string v0, "TYPE_INT64"

    return-object v0

    :pswitch_26  #0x2
    const-string v0, "TYPE_FLOAT"

    return-object v0

    :pswitch_29  #0x1
    const-string v0, "TYPE_INT32"

    return-object v0

    :pswitch_2c  #0x0
    const-string v0, "TYPE_BYTE"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
    .end packed-switch
.end method

.method public static wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    return-object v0

    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class v0, Ljava/lang/Integer;

    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class v0, Ljava/lang/Float;

    return-object v0

    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class v0, Ljava/lang/Long;

    return-object v0

    :cond_1c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class v0, Ljava/lang/Double;

    return-object v0

    :cond_23
    return-object p0
.end method
