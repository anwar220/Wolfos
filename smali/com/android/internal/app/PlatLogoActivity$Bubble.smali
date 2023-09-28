# classes4.dex

.class Lcom/android/internal/app/PlatLogoActivity$Bubble;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bubble"
.end annotation


# instance fields
.field public color:I

.field public r:F

.field public text:Ljava/lang/String;

.field public x:F

.field public y:F


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    return-void
.end method
