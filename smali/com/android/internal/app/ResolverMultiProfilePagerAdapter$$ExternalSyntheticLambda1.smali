# classes4.dex

.class public final synthetic Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->lambda$getNoWorkAppsAvailableMessage$4$com-android-internal-app-ResolverMultiProfilePagerAdapter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
