# classes4.dex

.class public final synthetic Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    check-cast p2, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-static {p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->lambda$static$0(Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;)I

    move-result p1

    return p1
.end method
