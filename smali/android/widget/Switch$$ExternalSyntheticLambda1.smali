# classes4.dex

.class public final synthetic Landroid/widget/Switch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Switch;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Switch;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Switch$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Switch;

    iput-object p2, p0, Landroid/widget/Switch$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Switch$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Switch;

    iget-object v1, p0, Landroid/widget/Switch$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->lambda$setThumbResourceAsync$2$android-widget-Switch(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
