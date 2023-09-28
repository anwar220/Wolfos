# classes.dex

.class public final Landroid/content/pm/verify/domain/DomainVerificationManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN_SET_ID_INVALID:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_UNABLE_TO_APPROVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ERROR_UNKNOWN_DOMAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_VERIFICATION_REQUEST:Ljava/lang/String; = "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INTERNAL_ERROR_NAME_NOT_FOUND:I = 0x1

.field public static final STATUS_OK:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    return-void
.end method

.method private rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;
    .registers 5

    instance-of v0, p1, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-nez p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_18
    return-object p1

    :cond_19
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    :cond_25
    return-object p1
.end method

.method private validateInput(Ljava/util/UUID;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided domain set cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1e

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_18

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1e
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public getDomainVerificationUserState(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_24

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1e

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_24
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public getOwnersForDomain(Ljava/lang/String;)Ljava/util/SortedSet;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryValidVerificationPackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_25

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1f

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_25
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    :try_start_3
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1, v2, p3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_2b

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_25

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2b
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    :try_start_3
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, p3, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_31

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2b

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_2b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_31
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method
