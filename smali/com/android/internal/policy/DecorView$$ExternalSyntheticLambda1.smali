# classes4.dex

.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->lambda$setBackgroundBlurRadius$1$com-android-internal-policy-DecorView(Ljava/lang/Boolean;)V

    return-void
.end method
