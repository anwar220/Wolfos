# classes4.dex

.class public final synthetic Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/TransitionAnimation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/TransitionAnimation;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$0$com-android-internal-policy-TransitionAnimation(F)F

    move-result p1

    return p1
.end method
