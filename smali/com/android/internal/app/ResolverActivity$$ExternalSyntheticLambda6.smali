# classes4.dex

.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/app/ResolverActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkTabLabel$8$com-android-internal-app-ResolverActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
