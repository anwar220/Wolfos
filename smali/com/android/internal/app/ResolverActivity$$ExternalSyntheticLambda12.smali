# classes4.dex

.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final synthetic f$2:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$2:Lcom/android/internal/app/ResolverListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;->f$2:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$4$com-android-internal-app-ResolverActivity(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method
