# classes4.dex

.class Lcom/android/internal/app/ChooserListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$1;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onLayoutChange$0(Landroid/widget/TextView;)V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_46

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_22

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_22
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    if-le v4, v3, :cond_43

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_43
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_46
    return-void
.end method
