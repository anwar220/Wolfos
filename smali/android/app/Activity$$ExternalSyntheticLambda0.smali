# classes.dex

.class public final synthetic Landroid/app/Activity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Activity$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->$r8$lambda$kHLZd6jBbWtXdNq0XZIR2rP3qPI(Landroid/app/Activity;)V

    return-void
.end method
