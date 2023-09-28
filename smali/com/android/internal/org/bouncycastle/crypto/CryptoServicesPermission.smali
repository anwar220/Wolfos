# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;


# static fields
.field public static final DEFAULT_RANDOM:Ljava/lang/String; = "defaultRandomConfig"

.field public static final GLOBAL_CONFIG:Ljava/lang/String; = "globalConfig"

.field public static final THREAD_LOCAL_CONFIG:Ljava/lang/String; = "threadLocalConfig"


# instance fields
.field private final actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    const/4 v0, 0x0

    return v0
.end method
