# classes.dex

.class public final synthetic Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/drawable/RippleDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$1$android-graphics-drawable-RippleDrawable()V

    return-void
.end method
