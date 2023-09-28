# classes4.dex

.class Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field final synthetic val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic val$glm:Lcom/android/internal/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/widget/GridLayoutManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->this$0:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p3, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$chooserGridAdapter:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->shouldCellSpan(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$1;->val$glm:Lcom/android/internal/widget/GridLayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_10
    return v0
.end method
