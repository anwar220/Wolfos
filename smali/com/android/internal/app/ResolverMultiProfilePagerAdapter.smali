# classes4.dex

.class public Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    }
.end annotation


# instance fields
.field private final mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

.field private final mShouldShowNoCrossProfileIntentsEmptyState:Z

.field private mUseLayoutWithDefault:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    iput-boolean p7, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return-void
.end method

.method private createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x1090100

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v2
.end method

.method private getCantAccessPersonalMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCantAccessWorkMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCrossProfileBlockedTitle()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWorkAppPausedTitle()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method allowShowNoCrossProfileIntentsEmptyState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mShouldShowNoCrossProfileIntentsEmptyState:Z

    return v0
.end method

.method bridge synthetic getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method getActiveAdapterView()Landroid/widget/ListView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method getListViewForIndex(I)Landroid/widget/ListView;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_resolver"

    return-object v0
.end method

.method public getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setupListAdapter(I)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getCantAccessPersonalMessage$3$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCantAccessWorkMessage$2$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNoPersonalAppsAvailableMessage$5$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNoWorkAppsAvailableMessage$4$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040850

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getWorkAppPausedTitle$0$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040854

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setUseLayoutWithDefault(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    return-void
.end method

.method protected setupContainerPadding(Landroid/view/View;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method setupListAdapter(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .registers 5

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
