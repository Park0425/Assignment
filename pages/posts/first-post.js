import Link from 'next/link';//If you’ve used <a href="…"> instead of <Link href="…"> and did this, 
                             //the background color will be cleared on link clicks because the browser does a full refresh.

export default function FirstPost() {
  return (
    <>
      <h1>Name: Sanghee Park</h1>
      <h2>😀😀😀</h2>
      <h2>
        <Link href="/">Back to home</Link>
      </h2>
    </>
  );
}