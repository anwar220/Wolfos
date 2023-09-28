# classes4.dex

.class public final Lcom/android/server/SystemConfig$SharedLibraryEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final canBeSafelyIgnored:Z

.field public final dependencies:[Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final isNative:Z

.field public final name:Ljava/lang/String;

.field public final onBootclasspathBefore:Ljava/lang/String;

.field public final onBootclasspathSince:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    if-eqz p4, :cond_17

    invoke-static {p4}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_17
    if-eqz p5, :cond_21

    invoke-static {p5}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
