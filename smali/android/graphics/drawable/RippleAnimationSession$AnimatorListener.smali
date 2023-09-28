# classes.dex

.class Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorListener"
.end annotation


# instance fields
.field private final mSession:Landroid/graphics/drawable/RippleAnimationSession;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleAnimationSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->mSession:Landroid/graphics/drawable/RippleAnimationSession;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimatorListener;->mSession:Landroid/graphics/drawable/RippleAnimationSession;

    invoke-static {v0, p1}, Landroid/graphics/drawable/RippleAnimationSession;->-$$Nest$monAnimationEnd(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
