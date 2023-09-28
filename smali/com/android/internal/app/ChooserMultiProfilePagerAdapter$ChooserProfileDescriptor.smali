# classes4.dex

.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserProfileDescriptor"
.end annotation


# instance fields
.field private chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field private recyclerView:Lcom/android/internal/widget/RecyclerView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetchooserGridAdapter(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;)Lcom/android/internal/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method constructor <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    const v0, 0x102047a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->recyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method
