# classes4.dex

.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$3:I

    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$4:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$2:I

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$3:I

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$4:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivity;->lambda$handleLayoutChange$5$com-android-internal-app-ChooserActivity(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    return-void
.end method
