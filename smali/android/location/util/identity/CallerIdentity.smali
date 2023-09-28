# classes2.dex

.class public final Landroid/location/util/identity/CallerIdentity;
.super Ljava/lang/Object;


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mListenerId:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iput p2, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iput-object p5, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    return-void
.end method

.method public static forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;
    .registers 8

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-object p0

    :cond_d
    new-instance v0, Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 12

    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p1, p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    return-object v1

    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid package \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 10

    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;
    .registers 8

    new-instance v6, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5

    if-nez p1, :cond_c

    new-instance v0, Landroid/os/WorkSource;

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_c
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/location/util/identity/CallerIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/util/identity/CallerIdentity;

    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mUid:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mPid:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v4, :cond_3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    goto :goto_3d

    :cond_3c
    move v0, v2

    :goto_3d
    return v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSystemServer()Z
    .registers 3

    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v2, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_54

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_4a
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v2, :cond_69

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
