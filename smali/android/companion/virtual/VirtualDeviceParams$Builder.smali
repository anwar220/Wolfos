# classes.dex

.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCrossTaskNavigations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedCrossTaskNavigations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultActivityPolicy:I

.field private mDefaultActivityPolicyConfigured:Z

.field private mDefaultNavigationPolicy:I

.field private mDefaultNavigationPolicyConfigured:Z

.field private mLockState:I

.field private mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/virtual/VirtualDeviceParams;
    .registers 12

    new-instance v10, Landroid/companion/virtual/VirtualDeviceParams;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    iget v5, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v6, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    iget-object v7, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    iget v8, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceParams-IA;)V

    return-object v10
.end method

.method public setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedActivities:Ljava/util/Set;

    return-object p0
.end method

.method public setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAllowedCrossTaskNavigations:Ljava/util/Set;

    return-object p0
.end method

.method public setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedActivities:Ljava/util/Set;

    return-object p0
.end method

.method public setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mBlockedCrossTaskNavigations:Ljava/util/Set;

    return-object p0
.end method

.method public setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    return-object p0
.end method

.method public setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    return-object p0
.end method
