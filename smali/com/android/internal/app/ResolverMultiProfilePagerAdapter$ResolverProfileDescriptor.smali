# classes4.dex

.class Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverProfileDescriptor"
.end annotation


# instance fields
.field final listView:Landroid/widget/ListView;

.field private resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic this$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    return-object p0
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->this$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->resolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    const v0, 0x102047a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    return-void
.end method
