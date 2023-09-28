# classes.dex

.class public Landroid/content/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;


# static fields
.field private static final STRINGS_TARGET_BYTE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimatedByteSizeOf(Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public static readHostMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-object p1

    :cond_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-object p1

    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static readHostSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private static readSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    return-object v1
.end method

.method public static writeHostMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v1, v4, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    goto :goto_d

    :cond_25
    :goto_25
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-nez v0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void

    :cond_2e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_32
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public static writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v1, v4, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    goto :goto_9

    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-nez v0, :cond_2a

    invoke-static {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    return-void

    :cond_2a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_2e
    invoke-static {v2, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3d

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private static writeSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    return-void
.end method
