# classes4.dex

.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Landroid/content/IntentFilter;

.field public final synthetic f$3:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$2:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$3:Lcom/android/internal/app/ChooserListAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$2:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;->f$3:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->lambda$queryDirectShareTargets$3$com-android-internal-app-ChooserActivity(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    return-void
.end method
