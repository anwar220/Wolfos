# classes4.dex

.class Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterTransitionAnimationDelegate"
.end annotation


# instance fields
.field private mOffsetCalculated:Z

.field private mPreviewReady:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private maybeStartListenForLayout()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    goto :goto_2c

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method markImagePreviewReady()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    :cond_a
    return-void
.end method

.method markOffsetCalculated()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    :cond_a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    return-void
.end method

.method postponeTransition()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->postponeEnterTransition()V

    return-void
.end method
