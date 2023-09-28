# classes4.dex

.class public final synthetic Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/UnlaunchableAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$getDialogMessage$1$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
