# classes4.dex

.class public final synthetic Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    check-cast p1, Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/android/internal/app/AppLocaleStore;->lambda$filterNotMatchingLocale$0(Ljava/util/HashSet;Ljava/util/Locale;)Z

    move-result p1

    return p1
.end method