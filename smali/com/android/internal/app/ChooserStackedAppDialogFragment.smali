# classes4.dex

.class public Lcom/android/internal/app/ChooserStackedAppDialogFragment;
.super Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final MULTI_DRI_KEY:Ljava/lang/String; = "multi_dri_key"

.field static final WHICH_KEY:Ljava/lang/String; = "which_key"


# instance fields
.field private mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

.field private mParentWhich:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->setSelected(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->dismiss()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    const-string/jumbo v1, "which_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    const-string/jumbo v1, "multi_dri_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method setStateFromBundle(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "multi_dri_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    const-string/jumbo v0, "user_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v0, "which_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    return-void
.end method
