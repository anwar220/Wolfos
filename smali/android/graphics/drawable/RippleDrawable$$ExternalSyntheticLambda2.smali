# classes.dex

.class public final synthetic Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/RippleDrawable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/drawable/RippleDrawable;

    check-cast p1, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$2$android-graphics-drawable-RippleDrawable(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method
