# classes4.dex

.class public final synthetic Landroid/widget/Magnifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Magnifier;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Magnifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Magnifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->lambda$onPixelCopyFailed$2$android-widget-Magnifier()V

    return-void
.end method
