# classes.dex

.class Landroid/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/animation/Animator;

.field private mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field private mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field private mReenterTransition:Landroid/transition/Transition;

.field private mReturnTransition:Landroid/transition/Transition;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;
    .registers 1

    iget-object p0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExitTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReenterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Fragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;

    invoke-static {}, Landroid/app/Fragment;->-$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-void
.end method
