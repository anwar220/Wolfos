# classes4.dex

.class public Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    }
.end annotation


# static fields
.field private static final SINGLE_CELL_SPAN_SIZE:I = 0x1


# instance fields
.field private mBottomOffset:I

.field private final mIsSendAction:Z

.field private final mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

.field private mMaxTargetsPerRow:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Landroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p5, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    iput p6, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;ILandroid/os/UserHandle;Landroid/os/UserHandle;ZI)V
    .registers 12

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {p0, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    iput-boolean p7, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    iput p8, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    return-void
.end method

.method private createProfileDescriptor(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 8

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    const v1, 0x1090061

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;

    invoke-static {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    return-object v2
.end method

.method private getCantAccessPersonalMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCantAccessWorkMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCantShareWithPersonalMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCantShareWithWorkMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCrossProfileBlockedTitle()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoPersonalAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoWorkAppsAvailableMessage()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWorkAppPausedTitle()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapterForIndex(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object p1

    return-object p1
.end method

.method getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getInactiveAdapterView()Lcom/android/internal/widget/RecyclerView;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    return-object p1
.end method

.method getListViewForIndex(I)Lcom/android/internal/widget/RecyclerView;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method getMetricsCategory()Ljava/lang/String;
    .registers 2

    const-string v0, "intent_chooser"

    return-object v0
.end method

.method public getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCantAccessPersonalMessage$5$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCantAccessWorkMessage$4$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCantShareWithPersonalMessage$3$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCantShareWithWorkMessage$2$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCrossProfileBlockedTitle$1$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNoPersonalAppsAvailableMessage$7$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104084f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNoWorkAppsAvailableMessage$6$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040850

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getWorkAppPausedTitle$0$com-android-internal-app-ChooserMultiProfilePagerAdapter()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040854

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setEmptyStateBottomOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    return-void
.end method

.method protected setupContainerPadding(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mBottomOffset:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method setupListAdapter(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    nop

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->-$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager;

    iget v3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mMaxTargetsPerRow:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    new-instance v3, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method protected showNoPersonalAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoPersonalAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_11

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithWorkMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_11
    nop

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessWorkMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method protected showNoWorkAppsAvailableEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getNoWorkAppsAvailableMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->mIsSendAction:Z

    if-eqz v0, :cond_11

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantShareWithPersonalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_11
    nop

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCantAccessPersonalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method protected showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .registers 5

    nop

    invoke-direct {p0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getWorkAppPausedTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
