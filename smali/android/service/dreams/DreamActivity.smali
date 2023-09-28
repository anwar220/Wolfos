# classes3.dex

.class public Landroid/service/dreams/DreamActivity;
.super Landroid/app/Activity;


# static fields
.field static final EXTRA_CALLBACK:Ljava/lang/String; = "binder"

.field static final EXTRA_DREAM_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    const v1, 0x10a002f

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-virtual {p0}, Landroid/service/dreams/DreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    nop

    const-string v2, "binder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamService$DreamActivityCallback;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p0}, Landroid/service/dreams/DreamService$DreamActivityCallback;->onActivityCreated(Landroid/service/dreams/DreamActivity;)V

    :cond_2d
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x10a0030

    const v1, 0x10a0031

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamActivity;->overridePendingTransition(II)V

    return-void
.end method
