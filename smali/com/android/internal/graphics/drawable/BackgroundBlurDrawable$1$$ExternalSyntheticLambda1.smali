# classes4.dex

.class public final synthetic Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$1;->lambda$positionLost$1$com-android-internal-graphics-drawable-BackgroundBlurDrawable$1()V

    return-void
.end method
