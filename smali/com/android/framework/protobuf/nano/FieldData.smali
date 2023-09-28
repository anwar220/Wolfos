# classes4.dex

.class Lcom/android/framework/protobuf/nano/FieldData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/android/framework/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-void
.end method

.method private toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clone()Lcom/android/framework/protobuf/nano/FieldData;
    .registers 6

    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_16

    :cond_11
    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_16
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v1, :cond_1c

    goto/16 :goto_b0

    :cond_1c
    instance-of v2, v1, Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_b0

    :cond_2a
    instance-of v2, v1, [B

    if-eqz v2, :cond_38

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_b0

    :cond_38
    instance-of v2, v1, [[B

    if-eqz v2, :cond_55

    check-cast v1, [[B

    array-length v2, v1

    new-array v2, v2, [[B

    iput-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_44
    array-length v4, v1

    if-ge v3, v4, :cond_54

    aget-object v4, v1, v3

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_54
    goto :goto_b0

    :cond_55
    instance-of v2, v1, [Z

    if-eqz v2, :cond_62

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_b0

    :cond_62
    instance-of v2, v1, [I

    if-eqz v2, :cond_6f

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_b0

    :cond_6f
    instance-of v2, v1, [J

    if-eqz v2, :cond_7c

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_b0

    :cond_7c
    instance-of v2, v1, [F

    if-eqz v2, :cond_89

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_b0

    :cond_89
    instance-of v2, v1, [D

    if-eqz v2, :cond_96

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_b0

    :cond_96
    instance-of v2, v1, [Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v2, :cond_b0

    check-cast v1, [Lcom/android/framework/protobuf/nano/MessageNano;

    array-length v2, v1

    new-array v2, v2, [Lcom/android/framework/protobuf/nano/MessageNano;

    iput-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_a2
    array-length v4, v1

    if-ge v3, v4, :cond_b0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_ad
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_ad} :catch_b1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    :cond_b0
    :goto_b0
    return-object v0

    :catch_b1
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_24

    :cond_c
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_12

    :cond_24
    :goto_24
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_94

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget-object v1, v2, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2d
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v1, [B

    if-eqz v2, :cond_3e

    check-cast v1, [B

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_3e
    instance-of v2, v1, [I

    if-eqz v2, :cond_4d

    check-cast v1, [I

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    :cond_4d
    instance-of v2, v1, [J

    if-eqz v2, :cond_5c

    check-cast v1, [J

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    :cond_5c
    instance-of v2, v1, [F

    if-eqz v2, :cond_6b

    check-cast v1, [F

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    return v1

    :cond_6b
    instance-of v2, v1, [D

    if-eqz v2, :cond_7a

    check-cast v1, [D

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    return v1

    :cond_7a
    instance-of v2, v1, [Z

    if-eqz v2, :cond_89

    check-cast v1, [Z

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    return v1

    :cond_89
    check-cast v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_94
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_a1

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a1

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_a1
    :try_start_a1
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ad} :catch_ae

    return v1

    :catch_ae
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getUnknownField(I)Lcom/android/framework/protobuf/nano/UnknownFieldData;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    return-object v0

    :cond_15
    return-object v1
.end method

.method getUnknownFieldSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-ne v0, p1, :cond_9

    goto :goto_1e

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to getExtension with a differernt Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    :goto_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    :try_start_4
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_f

    add-int/2addr v1, v2

    nop

    return v1

    :catch_f
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_20

    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_10

    :cond_20
    :goto_20
    return-void
.end method
