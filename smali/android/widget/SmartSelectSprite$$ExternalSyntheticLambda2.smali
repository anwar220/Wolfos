# classes4.dex

.class public final synthetic Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/SmartSelectSprite;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SmartSelectSprite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SmartSelectSprite;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0, p1}, Landroid/widget/SmartSelectSprite;->lambda$startAnimation$2$android-widget-SmartSelectSprite(Landroid/animation/ValueAnimator;)V

    return-void
.end method
