# classes4.dex

.class public final synthetic Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/CompoundButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iput-object p2, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iget-object v1, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->lambda$setButtonIconAsync$1$android-widget-CompoundButton(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
