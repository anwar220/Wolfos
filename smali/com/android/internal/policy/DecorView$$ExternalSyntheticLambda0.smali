# classes4.dex

.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/DecorView;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->lambda$new$0$com-android-internal-policy-DecorView()Z

    move-result v0

    return v0
.end method
