# classes.dex

.class public final synthetic Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->lambda$postOnAnimationStart$1$android-graphics-drawable-AnimatedImageDrawable()V

    return-void
.end method
